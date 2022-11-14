import React from 'react'
import AppBar from '@mui/material/AppBar';
import Container from '@mui/material/Container'
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import { Link } from "react-router-dom"
import HomeIcon from '@mui/icons-material/Home';


const Navigation = () => {
  return (
    <Box sx={{ flexGrow: 1 }}>
      <AppBar style={{backgroundColor:"#023047"}} position="static">
      <Container >
        <Toolbar>
          <Typography variant="h4" component="div" sx={{ flexGrow: 1 }}>
          </Typography>
          <Button style={{color:"#ffb703"}} component={Link}  to="/"><HomeIcon></HomeIcon></Button>
          <Button color="inherit" component={Link}  to="/activities">Activities</Button>
          <Button style={{color:"#8ecae6"}} component={Link} to="/activities/planned">Plan</Button>
          <Button style={{color:"#fb8500"}} component={Link} to="/activities/new">Add</Button>
        </Toolbar>
        </Container>
      </AppBar>
    </Box>
  );
}

export default Navigation;